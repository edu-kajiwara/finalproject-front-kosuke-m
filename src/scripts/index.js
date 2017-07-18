require('./costinput.tag');
require('./delete.tag');
require('./correction.tag');
require('./buttons.tag');
import Router from 'riot-router';
var Route = Router.Route,
    DefaultRoute = Router.DefaultRoute;
router.routes([
    new DefaultRoute({tag: 'costinput'}),
    new Route ({tag: 'users',path:'/users'}),
    new Route({tag: 'add',path:'/add'}),
    new Route({tag: 'fibonacci',path:'/fibonacci'}),
]);

riot.mount('*');
router.start();