SELECT
	*
FROM
	cc_users usr
	INNER JOIN cc_clients cli ON usr.user_id = cli.user_id

SELECT
	*
FROM
	cc_appointments
WHERE
	approved = false

SELECT
	a.appt_id,
	a.date,
	a.service_type,
	a.notes,
	u.first_name,
	u.last_name
FROM
	cc_appointments   a
	JOIN cc_emp_appts ea ON a.appt_id = ea.appt_id
	JOIN cc_employees e  ON e.emp_id = ea.emp_id
	JOIN cc_users     u	 ON e.user_id = u.user_id
WHERE
	a.approved = TRUE
	AND a.completed = TRUE
ORDER BY
	a.date DESC;

UPDATE
	cc_appointments
SET
	approved = TRUE
WHERE
	appt_id = $ {apptId}
;