/*global module*/

module.exports = function (grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner: '/*! mappi.js <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      },
      mappi: {
        src: ['src/mappi/mappi.js'],
        dest: 'public/assets/lib/mappi/mappi.min.js'
      },
      app: {
        src: 'public/assets/js/app.js',
        dest: 'public/assets/js/app.min.js'
      }
    },
    concat: {
      app: {
        src: ['app/app.js', 'app/app.routes.js', 'app/app.controller.js', 'app/home/home.controller.js', 'app/about/about.controller.js', 'app/contact/contact.controller.js'],
        dest: 'public/assets/js/app.js'
      }
    },
    watch: {
      scripts: {
        files: ['src/**/*.js'],
        tasks: ['buildMappi'],
        options: {
          spawn: false,
        },
      },
    }
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-watch');

  // Default task(s).
  grunt.registerTask('default', ['uglify']);
  grunt.registerTask('buildMappi', ['uglify:mappi']);
  grunt.registerTask('buildApp', ['concat:app', 'uglify:app']);

};
