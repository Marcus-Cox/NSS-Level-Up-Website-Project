SELECT e.id,
       e.description
FROM levelupapi_event e
LEFT JOIN levelupapi_gamer g
    ON e.gamer_id = g.id
LEFT JOIN auth_user u
    ON g.user_id= u.id
LEFT JOIN authtoken_token t
    ON t.user_id = u.id
WHERE t.key = `5k5k5k5k5k5k5k`