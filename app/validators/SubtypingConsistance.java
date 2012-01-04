package validators;

import models.Attribute;
import models.Subtyping;
import play.data.validation.Check;

public class SubtypingConsistance extends Check {

  @Override
  public boolean isSatisfied(Object validatedObject, Object value) {
    Subtyping st = (Subtyping)validatedObject;
    Attribute catgorizingAttribute = (Attribute)value;
    
    if(!catgorizingAttribute.belongingEntity.equals(st.supertypeEntity)) {
      setMessage("validation.subtypingInconsistency", catgorizingAttribute.toString(), 
          catgorizingAttribute.belongingEntity.toString(), st.supertypeEntity.toString());
      return false;
    }
    return true;
  }

}
