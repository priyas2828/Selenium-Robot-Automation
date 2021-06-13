import json
import jsonpath


# Create a function
def read_locator_from_Json(locatorname):
    f = open('C:/developement/Robot Framework/RobotFrameworkBasics/JSONFiles/ElementLocator.json')
    # response = json.loads("../JSONFiles//ElementsLocator.json")  # Give the emenets.json file path
    response = json.loads(f.read()) # Just give the open path
    value = jsonpath.jsonpath(response, locatorname)  # Fetch jsonpath value from the file(locatoname) and return it
    return value[0]  # Json value will always return s list hence pass the arg as 0
