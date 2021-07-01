const uploadFile = require('../utils/storage');
const { NODE_ENV } = process.env;

module.exports = (req, res, next) => {
    if (!req.file) return next();
    if (NODE_ENV === 'production') {
        const url = await uploadFile(req.file);
        req.body.profile_pic = url;
        return next();
    }
    // http://localhost:4020/uploads/myFile.txt
    const url = `${req.protocol}://${req.host}/${req.file.path}`;
    req.body.profile_pic = url;
    return next();
}
