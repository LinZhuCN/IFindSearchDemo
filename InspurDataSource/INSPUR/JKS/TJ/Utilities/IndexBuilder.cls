Class INSPUR.JKS.TJ.Utilities.IndexBuilder Extends %RegisteredObject
{
	ClassMethod BuildIndices() As %Status{
		Set tSC = $$$OK
		w "--------"_$zdt($h,3)_" Building "_"CEHRPATIENT"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.CEHRPATIENT).%BuildIndices()
		w "--------"_$zdt($h,3)_" CEHRPATIENT"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"EXAMMASTER"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.EXAMMASTER).%BuildIndices()
		w "--------"_$zdt($h,3)_" EXAMMASTER"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"INPATIENT"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.INPATIENT).%BuildIndices()
		w "--------"_$zdt($h,3)_" INPATIENT"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"INPATIENTDRUG"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.INPATIENTDRUG).%BuildIndices()
		w "--------"_$zdt($h,3)_" INPATIENTDRUG"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"INPATIENTOUTDIAG"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.INPATIENTOUTDIAG).%BuildIndices()
		w "--------"_$zdt($h,3)_" INPATIENTOUTDIAG"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"LABMASTER"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.LABMASTER).%BuildIndices()
		w "--------"_$zdt($h,3)_" LABMASTER"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"OUTPATIENT"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.OUTPATIENT).%BuildIndices()
		w "--------"_$zdt($h,3)_" OUTPATIENT"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"OUTPATIENTDIAG"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.OUTPATIENTDIAG).%BuildIndices()
		w "--------"_$zdt($h,3)_" OUTPATIENTDIAG"_" index builded--------",!
		w "--------"_$zdt($h,3)_" Building "_"OUTPATIENTDRUG"_" index--------",!
		Do ##Class(INSPUR.JKS.TJ.OUTPATIENTDRUG).%BuildIndices()
		w "--------"_$zdt($h,3)_" OUTPATIENTDRUG"_" index builded--------",!
		Quit tSC
	}
}