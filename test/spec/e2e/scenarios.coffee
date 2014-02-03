'use strict'

###
describe 'PhoneCat App', () ->
  describe 'Phone list view', () ->
    beforeEach () ->
      browser().navigateTo '../../../app/views/main.html'

    it 'should filter the phone list as user types into the search box', () ->
      expect(repeat('.phones li').count()).toBe(3);

      input('query').enter('nexus')
      expect(repeat('.phones li').count()).toBe(1);

      input('query').enter('motorola')
      expect(repeat('.phones li').count()).toBe(2);
