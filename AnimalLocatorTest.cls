@isTest
private class AnimalLocatorTest {
@isTest static  void testGet() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // Call method to test
        String result = AnimalLocator.getAnimalNameById (7);
        // Verify mock response is not null
        System.assertNotEquals(null,result,
                               'The callout returned a null response.');        
        System.assertEquals('panda', result,
                            'The animal name should be \'panda\'');          
    } 
}