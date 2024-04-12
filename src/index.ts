import { fakerJA } from "@faker-js/faker";

console.log("Hello, Bun!");

export const faker = fakerJA;

console.log(faker.internet.userName());
console.log(faker.commerce.department());

[...Array(100)].forEach((_) => {
  console.log(faker.person.lastName(), faker.person.firstName());
  console.log(faker.company.name());
  console.log(faker.commerce.department());
});
