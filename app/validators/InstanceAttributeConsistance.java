package validators;

import models.Attribute;
import models.Instance;
import models.InstanceAttribute;
import play.data.validation.Check;

public class InstanceAttributeConsistance extends Check {

  @Override
  public boolean isSatisfied(Object validatedObject, Object value) {
    InstanceAttribute ia = (InstanceAttribute)validatedObject;
    Instance belongingInstance = (Instance)value;
    
    if(belongingInstance == null) return false;
    if(!belongingInstance.belongingEntityType.getAttributes().contains(ia.attributeType)) {
      setMessage("validation.instanceAttributeInconsistency", belongingInstance.toString(), 
          belongingInstance.belongingEntityType.toString(), belongingInstance.belongingEntityType.getAttributes().toString(), ia.attributeType.toString());
      return false;
    }
    for(InstanceAttribute sibling : belongingInstance.attributes()) {
      if(sibling.attributeType.equals(ia.attributeType)) {
        setMessage("validation.instanceAttributeDuplicate", ia.attributeType.toString());
        return false;
      }      
    }    
    return true;
  }

}
