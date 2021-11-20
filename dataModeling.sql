CREATE TABLE users(
    id SERIAL PRIMARY KEY, 
    username VARCHAR(40), 
    passwords VARCHAR(255)
); 

CREATE TABLE occasions( 
    occasion SERIAL PRIMARY KEY,
    event_details VARCHAR(255),
    recipies VARCHAR(255),
    user_id INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE foods (
    plate SERIAL PRIMARY KEY,
    ingredient_each VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE recipies (
    name SERIAL PRIMARY KEY, 
    steps VARCHAR(255), 
    user_id INTEGER NOT NULL REFERENCES users(id),
    private BOOLEAN,
    ingredients VARCHAR(255) NOT NULL UNIQUE REFERENCES foods(ingredient_each) 
);

CREATE TABLE grocery_list (
    id SERIAL PRIMARY KEY,
    recipe VARCHAR(255), 
    item VARCHAR(255) NOT NULL REFERENCES recipies(ingredients)
);

