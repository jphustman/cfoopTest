<cfscript>

    objPerson = createObject('component', 'oopTest.Person').init();


    writeDump(var="#objPerson.getMemento()#" label="Person - variables.instance");







</cfscript>
