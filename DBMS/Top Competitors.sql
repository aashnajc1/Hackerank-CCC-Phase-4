SELECT h.hacker_id, 
       h.NAME 
FROM   hackers h, 
       challenges c, 
       difficulty d, 
       submissions s 
WHERE  h.hacker_id = s.hacker_id 
       AND c.challenge_id = s.challenge_id 
       AND c.difficulty_level = d.difficulty_level 
       AND s.score = d.score 
GROUP  BY h.hacker_id, 
          h.NAME 
HAVING Count(h.hacker_id) > 1 
ORDER  BY Count(c.challenge_id) DESC, 
          h.hacker_id
