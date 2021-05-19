<?php
require_once ROOT . '/models/questionsModel.php';

function getRandomQuestion()
{
    $questions = new questions();
    $questionList = $questions->getAllQuestions();
    var_dump($questionList);
}
getRandomQuestion();

require_once ROOT . '/views/questions.php';
