import { client } from "../../db";

export default async (req, res) => {
  const body = req.body;
  await client.connect();
  const db = client.db('docker-next');
  const collection = db.collection('documents');
  const result = await collection.insertOne(body);

  res.status(200).json(result);
}