import { MongoClient } from 'mongodb';

const URL = process.env.DB_URL;
const client = new MongoClient(URL);

export { client };