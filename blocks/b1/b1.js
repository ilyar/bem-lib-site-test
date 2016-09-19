/**
 * @module b1
 */

modules.define(
  'b1',
  ['inherit'],
  function ( provide, inherit ) {

    /**
     * @class b1
     * @exports b1
     */
    b1 = inherit( /** @lends b1.prototype */{
      /**
       * @constructor
       */
      __constructor : function () {
      },

      /**
       * Fires event handlers
       * @param {String} str
       * @returns {String}
       */
      foo : function ( str ) {
        return str;
      }
    } );

    provide( b1 );
  }
);
