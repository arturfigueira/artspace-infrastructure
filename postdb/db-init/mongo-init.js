db.createUser({
  user: "postman",
  pwd: "jD3Ha1BgkU9xSL3O",
  roles: [{ role: "readWrite", db: "postman" }],
});

db.createCollection("post");

db.createCollection("author");
