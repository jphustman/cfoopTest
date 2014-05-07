component
    displayname="Person"
    hint="I am the Person Class."
    accessors="true"
{
    property name="firstName" type="string" default="";
    property name="lastName" type="string" default="";
    property name="gender" type="string" default="";

    variables.instance = {
        firstName = "",
        lastName = "",
        gender = ""
    };

    public any function init(required string firstName = "",
                             required string lastName = "",
                             required string gender = "")
                    output="false"
                    hint="I am the constructor method for the Person Class."
    {
        variables.firstName = arguments.firstName;
        variables.lastName  = arguments.lastName;
        variables.gender    = arguments.gender;

        return (this);
    }

    /**
     * I return the full name of the person.
     */
    public string function getFullName() output="false" {
        local.strFullName = variables.firstName & " " & variables.lastName;
        return local.strFullName;
    }

    /**
     * I return a dumped struct of the variables.instance scope.
     */
    public function getMemento() output="false" {

        return variables.instance;

    }
}
