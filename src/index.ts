import { Faker, ja } from "@faker-js/faker";

console.log("Hello, Bun!");

export const faker = new Faker({
  locale: [ja],
});

console.log(faker.internet.userName());

[...Array(100)].forEach((_) => {
  console.log(faker.person.lastName(), faker.person.firstName());
});
