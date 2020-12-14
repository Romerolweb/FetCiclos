use ciclos_propedeuticos_2;

SELECT
	cycle.id, 
	cycle.`name`, 
	ucr.user_id, 
	dr.`degree_request`, 
	dr.degree_project_name, 
	dr.observation, 
	dr.state, 
    DATE_FORMAT(dr.degree_date, "%m %d %y") AS degree_date,
	dr.create_time
FROM
	cycle
	LEFT JOIN
	user_cycle_request AS ucr
	ON 
		cycle.id = ucr.id
	LEFT JOIN
	degree_request AS dr
	ON 
		ucr.id = dr.id
    

