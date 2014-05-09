component
    displayname = "Person"
    output = "false"
    hint = "I am the Person Class."
    accessors = "true"
{
    property name="firstName" type="string" default="";
    property name="lastName" type="string" default="";
    property name="gender" type="string" default="";
    property name="dateOfBirth" type="date" default="0";
    property name="hairColor" type="string" default="";

    variables.instance = {
        firstName = "",
        lastName = "",
        gender = "",
        dateOfBirth = "0",
        hairColor = ""
    };


    public any function init(required string firstName = "",
                             required string lastName = "",
                             required string gender = "",
                             required date dateOfBirth = "0",
                             required string hairColor = "")
                    output="false"
                    hint="I am the constructor method for the Person Class."
    {
        variables.firstName   = arguments.firstName;
        variables.lastName    = arguments.lastName;
        variables.gender      = arguments.gender;
        variables.dateOfBirth = arguments.dateOfBirth;
        variables.hairColor   = arguments.hairColor;

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
