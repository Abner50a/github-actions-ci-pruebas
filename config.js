const {
    NODE_ENV,
    MONGO_ATLAS_USER,
    MONGO_ATLAS_PASSWORD,
    MONGO_DB_NUEVA } = process.env;

    console.log(NODE_ENV)
const databases = {
  // test : {},  //Prueba de BD- para correr la bd o para entorno experimental
  // dev: {},  //UNa copia exacta de production
  // staging: {},  //UNa copia exacta para hacer prueba hacer justamente antes de producción
  // production : {  }

  test: {
    //Cambios significativos en la estructura de la bd
    db_uri: `mongodb+srv://${MONGO_ATLAS_USER}:${MONGO_ATLAS_PASSWORD}@cluster0.fup77.mongodb.net/test?retryWrites=true&w=majority`,
  },
  //Entorno predeterminado para trabajar en el dia a dia
  dev: {
   // db_uri: `mongodb://db:27017/${MONGO_DB_NUEVA}`
    db_uri: `mongodb+srv://${MONGO_ATLAS_USER}:${MONGO_ATLAS_PASSWORD}@cluster0.fup77.mongodb.net/development?retryWrites=true&w=majority`,
  },
  //contiene los datos reales de nuestros usuarios/clientes
  production: {
    db_uri: `mongodb+srv://${MONGO_ATLAS_USER}:${MONGO_ATLAS_PASSWORD}@cluster0.fup77.mongodb.net/myFirstDatabase?retryWrites=true&w=majority`,
  }
  
};

module.exports = databases[NODE_ENV];
