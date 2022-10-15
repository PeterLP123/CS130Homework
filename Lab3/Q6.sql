SELECT *
FROM cs130lab3
WHERE custiban ~ '^IE.{24,}$'
OR custiban ~ '^CH.{24,}$'
OR custiban ~ '^ES.{24,}$';
