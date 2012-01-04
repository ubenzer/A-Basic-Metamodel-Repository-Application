package validators;

import models.Attribute;
import models.Instance;
import models.InstanceAttribute;
import models.Relationship;
import play.data.validation.Check;

public class RelationshipConsistance extends Check {

  @Override
  public boolean isSatisfied(Object validatedObject, Object value) {
    Relationship rel  = (Relationship)validatedObject;
    Attribute primaryKeyAttribute = (Attribute)value;
    
    if(!primaryKeyAttribute.isPartOfKeyAttib) {
      setMessage("validation.relationShipInconsistency.notKeyAttrib", primaryKeyAttribute.toString());
      return false;
    }
    if(primaryKeyAttribute.belongingAttributeType != rel.foreignKeyAttribute.belongingAttributeType) {
      setMessage("validation.relationShipInconsistency.typeMismatch", 
          primaryKeyAttribute.belongingAttributeType.toString(),
          rel.foreignKeyAttribute.belongingAttributeType.toString());
      return false;
    }
    return true;
  }

}
