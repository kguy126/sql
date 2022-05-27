WITH 

cant(login,avatar) as ( select avatar.login, count(*) as avatars from avatar 

group by avatar.login),

JK (login,name,gender)AS (SELECT  avatar.login,player.name,player.gender FROM AVATAR

INNER JOIN PLAYER ON player.login= avatar.login and player.gender!= avatar.gender
GROUP BY avatar.login,player.name,player.gender
ORDER by Login)

 
SELECT Jk.login,Jk.name,Jk.gender, cant.avatar as avatars from JK
inner join cant ON jk.login=cant.login

;


