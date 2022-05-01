-- :name create-user! :! :n
-- :doc creates a new user record
INSERT INTO users
(id, first_name, last_name, email, pass)
VALUES (:id, :first_name, :last_name, :email, :pass)

-- :name update-user! :! :n
-- :doc updates an existing user record
UPDATE users
SET first_name = :first_name, last_name = :last_name, email = :email
WHERE id = :id

-- :name get-user :? :1
-- :doc retrieves a user record given the id
SELECT * FROM users
WHERE id = :id

-- :name delete-user! :! :n
-- :doc deletes a user record given the id
DELETE FROM users
WHERE id = :id

-- :name create-question! :! :n
-- :doc creates a new question
INSERT INTO question
(question_text)
VALUES (:question_text)

-- :name get-questions :? :*
-- :doc retrieves all questions
SELECT * FROM question

-- :name question-name :? :1
-- :doc retrieves the name and id for a question
SELECT id, question_text FROM question
WHERE id = :id

-- :name create-choice! :! :n
-- :doc creates a choice
insert into choice
(question, choice_text)
values (:question, :choice_text)

-- :name get-choices :? :*
-- :doc retrieves all choices for a question
select * from choice
where question = :question

-- :name save-vote :! :n
-- :doc records the extra vote
update choice
set votes = votes + 1
where id = :id
