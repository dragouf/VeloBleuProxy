<?php

function isValidHttpRequest($data, $responseHeader)
{
	// Ok si pas d'erreur, reponse http à 200 et a reçu des données
	return ($data !== false) && (strpos($responseHeader[0], "200")) && (strlen($data) > 0);
}

function getHttpError($responseHeader)
{
	// Ok si pas d'erreur, reponse http à 200 et a reçu des données
	return $http_response_header[0];
}