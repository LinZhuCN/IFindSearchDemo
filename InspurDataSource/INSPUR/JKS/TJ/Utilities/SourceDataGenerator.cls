Class INSPUR.JKS.TJ.Utilities.SourceDataGenerator Extends %RegisteredObject
{

ClassMethod ClearData() As %Status
{
		Set tSC = $$$OK
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.CEHR_PATIENT)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.EXAMMASTER)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.INPATIENT)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.INPATIENT_DRUG)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.INPATIENT_OUTDIAG)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.LABMASTER)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.OUTPATIENT)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.OUTPATIENT_DIAG)
		&sql(TRUNCATE TABLE INSPUR_JKS_TJ.OUTPATIENT_DRUG)
		Quit tSC
}

ClassMethod GenerateData(inEntNumber As %Integer,outEntNumber As %Integer) As %Status{
	Set tSC = $$$OK
	Set inEntArr = 1
	Do ##class(INSPUR.JKS.TJ.INPATIENT).Populate(inEntNumber,,,.inEntArr,,)
	for i = 1:1:inEntNumber{
		#Dim ent As INSPUR.JKS.TJ.INPATIENT   = inEntArr(i)
		Do ..GenerateInpData(ent)
		Do ent.%Save()
	}
	Set outEntArr =  1
	Do ##class(INSPUR.JKS.TJ.OUTPATIENT).Populate(outEntNumber,,,.outEntArr,,)
	for i = 1:1:outEntNumber{
		#Dim ent As INSPUR.JKS.TJ.OUTPATIENT  = outEntArr(i)
		Do ..GenerateOutpData(ent)
		Do ent.%Save()
	}
	Quit tSC
}

ClassMethod GenerateInpData(ent As INSPUR.JKS.TJ.INPATIENT) As %Status{
	Set tSC = $$$OK
	Set patId = ent.PATIENTID
	Set orgcode = ent.ORGCODE
	Set eventno = ent.INPATFORMNO
	//生成患者信息
	Set patArr = 1
	Do ##class(INSPUR.JKS.TJ.CEHRPATIENT).Populate(1,,,.patArr,,)
	#Dim pat As INSPUR.JKS.TJ.CEHRPATIENT = patArr(1)
	Set pat.PATIENTID = patId
	Set pat.ORGCODE = orgcode
	Do pat.%Save()
	//生成住院诊断
	Set inDiagcounts = $R(6)
	Set inDiagArr = 1
	Do ##class(INSPUR.JKS.TJ.INPATIENTOUTDIAG).Populate(inDiagcounts,,,.inDiagArr,,)
	For i = 1:1:inDiagcounts{
		#Dim inDiag As INSPUR.JKS.TJ.INPATIENTOUTDIAG = inDiagArr(i)
		Set inDiag.ORGCODE = orgcode
		Set inDiag.INPATFORMNO = eventno
		Set diagFlag = $R(11)
		if diagFlag > 7{
			Set inDiag.OUTDIAGCODE = $CASE(diagFlag,8:"gaoxueya",9:"tangniaobing",10:"feiqizhong")
			Set inDiag.OUTDIAGNAME  = $CASE(diagFlag,8:"高血压",9:"糖尿病",10:"肺气肿")
		}
		Do inDiag.%Save()
	}
	//生成住院药嘱
	Set inDrugCounts = $R(41)
	Set inDrugArr = 1
	Do ##class(INSPUR.JKS.TJ.INPATIENTDRUG).Populate(inDrugCounts,,,.inDrugArr,,)
	For i = 1:1:inDrugCounts{
		#Dim inDrug As INSPUR.JKS.TJ.INPATIENTDRUG = inDrugArr(i)
		Set inDrug.ORGCODE = orgcode
		Set inDrug.INPATFORMNO = eventno
		Set drugFlag = $R(21)
		if drugFlag > 17{
			Set inDrug.DRUGLOCALCODE = $CASE(drugFlag,18:"gaoxueya",19:"tangniaobing",20:"feiqizhong")
			Set inDrug.DRUGNAME = $CASE(drugFlag,18:"高血压含片",19:"糖尿病胶囊",20:"肺气肿针")
		}
		Do inDrug.%Save()
	}
	//生成住院检查
	Set inExamCounts = $R(6)
	Set inExamArr = 1
	Do ##class(INSPUR.JKS.TJ.EXAMMASTER).Populate(inExamCounts,,,.inExamArr,,)
	For i = 1:1:inExamCounts{
		#Dim inExam As INSPUR.JKS.TJ.EXAMMASTER = inExamArr(i)
		Set inExam.ORGCODE = orgcode
		Set inExam.PATIENTID = patId
		Set inExam.EVENTNO = eventno
		Set examFlag = $R(11)
		if examFlag > 7{
			Set inExam.DIAGNOSECODE=$CASE(examFlag,8:"gaoxueya",9:"tangniaobing",10:"feiqizhong")
			Set inExam.DIAGNOSENAME=$CASE(examFlag,8:"高血压病",9:"II型糖尿病",10:"慢支炎肺气肿")
			Set inExam.EXAMITEMNAME=inExam.DIAGNOSENAME
		}
		Do inExam.%Save()
	}
	//生成住院检验
	Set inLabCounts = $R(11)
	Set inLabArr = 1
	Do ##class(INSPUR.JKS.TJ.LABMASTER).Populate(inLabCounts,,,.inLabArr,,)
	For i = 1:1:inLabCounts{
		#Dim inLab As INSPUR.JKS.TJ.LABMASTER = inLabArr(i)
		Set inLab.ORGCODE = orgcode
		Set inLab.PATIENTID = patId
		Set inLab.EVENTNO = eventno
		Set labFlag = $R(21)
		if labFlag > 17{
			Set inLab.DIAGNOSISCODE = $CASE(labFlag,18:"gaoxueya",19:"tangniaobing",20:"feiqizhong")
			Set inLab.DIAGNOSISNAME = $CASE(labFlag,18:"原发性高血压",19:"I型糖尿病",20:"慢性支气管炎")
			Set inLab.CATALOGNAME = inLab.DIAGNOSISNAME
		}
		Do inLab.%Save()
	}
	Quit tSC
}

ClassMethod GenerateOutpData(ent As INSPUR.JKS.TJ.OUTPATIENT) As %Status{
	Set tSC = $$$OK
	Set patId = ent.PATIENTID
	Set orgcode = ent.ORGCODE
	Set eventno = ent.OUTPATFORMNO
	//生成患者信息
	Set patArr = 1
	Do ##class(INSPUR.JKS.TJ.CEHRPATIENT).Populate(1,,,.patArr,,)
	#Dim pat As INSPUR.JKS.TJ.CEHRPATIENT = patArr(1)
	Set pat.PATIENTID = patId
	Set pat.ORGCODE = orgcode
	Do pat.%Save()
	//生成门诊诊断
	Set outDiagcounts = $R(4)
	Set outDiagArr = 1
	Do ##class(INSPUR.JKS.TJ.OUTPATIENTDIAG).Populate(outDiagcounts,,,.outDiagArr,,)
	For i = 1:1:outDiagcounts{
		#Dim outDiag As INSPUR.JKS.TJ.OUTPATIENTDIAG = outDiagArr(i)
		Set outDiag.ORGCODE = orgcode
		Set outDiag.OUTPATFORMNO = eventno
		Set diagFlag = $R(11)
		if diagFlag > 7{
			Set outDiag.OUTPATDIAGCODE = $CASE(diagFlag,8:"gaoxueya",9:"tangniaobing",10:"feiqizhong")
			Set outDiag.OUTPATDIAGNAME  = $CASE(diagFlag,8:"高血压眼病",9:"继发性糖尿病",10:"肺气肿")
		}
		Do outDiag.%Save()
	}
	//生成门诊药嘱
	Set outDrugCounts = $R(6)
	Set outDrugArr = 1
	Do ##class(INSPUR.JKS.TJ.OUTPATIENTDRUG).Populate(outDrugCounts,,,.outDrugArr,,)
	For i = 1:1:outDrugCounts{
		#Dim outDrug As INSPUR.JKS.TJ.OUTPATIENTDRUG = outDrugArr(i)
		Set outDrug.ORGCODE = orgcode
		Set outDrug.OUTPATFORMNO = eventno
		Set drugFlag = $R(21)
		if drugFlag > 17{
			Set outDrug.DRUGLOCALCODE = $CASE(drugFlag,18:"gaoxueya",19:"tangniaobing",20:"feiqizhong")
			Set outDrug.DRUGNAME = $CASE(drugFlag,18:"高血压神药",19:"糖尿病注射液",20:"肺气肿散")
		}
		Do outDrug.%Save()
	}
	//生成门诊检查
	Set inExamCounts = $R(3)
	Set inExamArr = 1
	Do ##class(INSPUR.JKS.TJ.EXAMMASTER).Populate(inExamCounts,,,.inExamArr,,)
	For i = 1:1:inExamCounts{
		#Dim inExam As INSPUR.JKS.TJ.EXAMMASTER = inExamArr(i)
		Set inExam.ORGCODE = orgcode
		Set inExam.PATIENTID = patId
		Set inExam.EVENTNO = eventno
		Set examFlag = $R(11)
		if examFlag > 7{
			Set inExam.DIAGNOSECODE=$CASE(examFlag,8:"gaoxueya",9:"tangniaobing",10:"feiqizhong")
			Set inExam.DIAGNOSENAME=$CASE(examFlag,8:"高血压危象",9:"糖尿病眼病",10:"急性肺气肿")
			Set inExam.EXAMITEMNAME = inExam.DIAGNOSENAME
		}
		Do inExam.%Save()
	}
	//生成门诊检验
	Set inLabCounts = $R(6)
	Set inLabArr = 1
	Do ##class(INSPUR.JKS.TJ.LABMASTER).Populate(inLabCounts,,,.inLabArr,,)
	For i = 1:1:inLabCounts{
		#Dim inLab As INSPUR.JKS.TJ.LABMASTER = inLabArr(i)
		Set inLab.ORGCODE = orgcode
		Set inLab.PATIENTID = patId
		Set inLab.EVENTNO = eventno
		Set labFlag = $R(21)
		if labFlag > 17{
			Set inLab.DIAGNOSISCODE = $CASE(labFlag,18:"gaoxueya",19:"tangniaobing",20:"feiqizhong")
			Set inLab.DIAGNOSISNAME = $CASE(labFlag,18:"高血压?",19:"疑似糖尿病",20:"肺气肿肺功能衰竭")
			Set inLab.CATALOGNAME = inLab.DIAGNOSISNAME
		}
		Do inLab.%Save()
	}
	Quit tSC
}

}
