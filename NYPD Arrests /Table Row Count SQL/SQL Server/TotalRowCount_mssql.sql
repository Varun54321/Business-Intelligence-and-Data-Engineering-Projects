-- Table Row Counts -
  
  select count(*) as [stg_nyc_arrests] FROM [NYC_Arrests].[dbo].[stg_nyc_arrests]
  select count(*) as [Fact_Arrest] FROM [NYC_Arrests].[dbo].[Fact_Arrest]
   select count(*) as [Dim_Perpetrator] FROM [NYC_Arrests].[dbo].[Dim_Perpetrator]
    select count(*) as [Dim_PD_CD] FROM [NYC_Arrests].[dbo].[Dim_PD_CD]
	 select count(*) as [Dim_Law] FROM [NYC_Arrests].[dbo].[Dim_Law]
	  select count(*) as [Dim_KY_CD] FROM [NYC_Arrests].[dbo].[Dim_KY_CD]
	   select count(*) as [Dim_InfoArrest] FROM [NYC_Arrests].[dbo].[Dim_InfoArrest]
	    select count(*) as [Dim_Geo] FROM [NYC_Arrests].[dbo].[Dim_Geo]
		 select count(*) as [Dim_AGE_GROUP]FROM [NYC_Arrests].[dbo].[Dim_AGE_GROUP]