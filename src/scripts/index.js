const riot = require("riot");
require('./costinput.tag');
const observer = riot.observable();
import Router from 'riot-router';
var Route = Router.Route,
    DefaultRoute = Router.DefaultRoute;
router.routes([
  new DefaultRoute({tag: 'costinput'}),
]);

riot.mount('*',{ observer });
router.start();