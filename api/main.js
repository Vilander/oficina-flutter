import express from "express";

const app = express();

const users = [
  {nome: "Arthur", idade: 20},
  {nome: "João", idade: 13},
  {nome: "Antonio", idade: 17},
  {nome: "Gabriel", idade: 25}
];

app.get ("/", (req,res) => {
  res.send(JSON.stringify(users));
});

app.listen (3000, () => {
  console.log("rodando na porta 3000")
})