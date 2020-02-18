Class ClinicalDocument.Utilities.DataHandler
{

ClassMethod ClearDocData()
{
		&sql(TRUNCATE TABLE ClinicalDocument.EncounterDoc)
		&sql(TRUNCATE TABLE ClinicalDocument.DiagnosisDoc)
		&sql(TRUNCATE TABLE ClinicalDocument.DrugDoc)
		&sql(TRUNCATE TABLE ClinicalDocument.ExamDoc)
		&sql(TRUNCATE TABLE ClinicalDocument.LabDoc)
		
		d ##class(EnsLib.SQL.InboundAdapter).ClearAllAppData("InpatientService")
		
		d ##class(EnsLib.SQL.InboundAdapter).ClearAllAppData("OutpatientService")
}

ClassMethod GetPerformance(interval As %Integer)
{
		Set lastCount = 0
		Set currentCount = 0
		Set entCount = 0
		Set lastEntCount = 0
		Set lastTime = $h
		Set tempCount = 0
		Set currentTime = 0
		Set loopCount = 10
		&sql(select count(*) into :lastEntCount from ClinicalDocument.EncounterDoc)
		Set lastCount = lastCount + lastEntCount
		&sql(select count(*) into :tempCount from ClinicalDocument.DiagnosisDoc)
		Set lastCount = lastCount + tempCount
		&sql(select count(*) into :tempCount from ClinicalDocument.DrugDoc)
		Set lastCount = lastCount + tempCount
		&sql(select count(*) into :tempCount from ClinicalDocument.ExamDoc)
		Set lastCount = lastCount + tempCount
		&sql(select count(*) into :tempCount from ClinicalDocument.LabDoc)
		Set lastCount = lastCount + tempCount
		w "--------"_$ZDT($h,3)_"--------",!
		w "Currently "_lastEntCount_ " EncounterDoc stored and overall "_lastCount_" Docs stored",!
		w "--------"_$ZDT($h,3)_"--------",!
		For i=1:1:loopCount{
			hang interval
			&sql(select count(*) into :entCount from ClinicalDocument.EncounterDoc)
			Set currentCount = entCount
			&sql(select count(*) into :tempCount from ClinicalDocument.DiagnosisDoc)
			Set currentCount = currentCount + tempCount
			&sql(select count(*) into :tempCount from ClinicalDocument.DrugDoc)
			Set currentCount = currentCount + tempCount
			&sql(select count(*) into :tempCount from ClinicalDocument.ExamDoc)
			Set currentCount = currentCount + tempCount
			&sql(select count(*) into :tempCount from ClinicalDocument.LabDoc)
			Set currentCount = currentCount + tempCount
			Set currentTime = $h
			Set timeDiff =  ##class(%SYSTEM.SQL).DATEDIFF("ss",lastTime,currentTime)
			Set entCountDiff = entCount - lastEntCount
			Set countDiff = currentCount - lastCount
			w "--------"_$ZDT(currentTime,3)_"--------",!
			W "Current Encounter Count is "_entCount_", Last Encounter Count is "_lastEntCount,!
			W "Current Count is "_currentCount_", Last Count is "_lastCount,!
			W "Increased "_entCountDiff_" EncounterDocs in "_timeDiff_" seconds. Encounter loading speed is "_(entCountDiff/timeDiff)_" rs/s",!
			W "Increased "_countDiff_" Docs in "_timeDiff_" seconds. Overall loading speed is "_(countDiff/timeDiff)_" rs/s",!
			w "--------"_$ZDT(currentTime,3)_"--------",!
			w !
			Set lastTime = currentTime
			Set lastCount = currentCount
			Set lastEntCount  = entCount
		}
}

}
