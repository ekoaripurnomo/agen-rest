import mongoose from 'mongoose';

 mongoose.Promise = global.Promise;
 export const connect = () => mongoose.connect('mongodb://admin:dodol123@mongo/agen?authSource=admin', { useNewUrlParser: true });
