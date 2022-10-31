BEGIN;

CREATE TABLE IF NOT EXISTS pokedex (

    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    generation_id INTEGER NOT NULL REFERENCES generation(id)
    );

CREATE TABLE IF NOT EXISTS generation (

    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT NOT NULL
    );

CREATE TABLE IF NOT EXISTS pokemon (

    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    number INTEGER NOT NULL,
    name TEXT NOT NULL,
    heal INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defence INTEGER NOT NULL,
    attack_special INTEGER NOT NULL,
    defence_special INTEGER NOT NULL,
    speed INTEGER NOT NULL,
    image_pokemon TEXT,
    generation_id INTEGER NOT NULL REFERENCES generation(id),
    pokemon_type_id INTEGER NOT NULL REFERENCES pokemon_type(id),
    );

CREATE TABLE IF NOT EXISTS pokemon_type (
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        label TEXT NOT NULL,
        image_type TEXT
    );

COMMIT;