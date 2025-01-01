import express, { Application, Request, Response } from "express";

const app: Application = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/ping", (req: Request, res: Response) => {
  res.status(200).send({ message: "Hello, TypeScript Express!" });
});

const port = process.env.PORT || 8000;
try {
  app.listen(port, () => {
    console.log(`Running at Port ${port}...`);
  });
} catch (e) {
  if (e instanceof Error) {
    console.error(e.message);
  }
}
