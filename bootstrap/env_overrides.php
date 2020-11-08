<?php

$overridesDir = __DIR__ . '/../env_overrides';

Dotenv\Dotenv::createImmutable($overridesDir, array_diff(
    scandir($overridesDir),
    ['.', '..', '.keep']
))->safeLoad();

