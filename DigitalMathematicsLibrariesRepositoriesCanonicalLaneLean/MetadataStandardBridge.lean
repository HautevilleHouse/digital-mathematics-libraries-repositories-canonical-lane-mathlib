import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure MetadataStandard where
  schema : String
  namespace : String
  crosswalkFunction : Type u
  validationRules : Prop

structure MetadataEvidence (S : MetadataStandard) where
  schemaValid : Prop
  crosswalkDefined : Prop
  validationRulesClosed : S.validationRules

def MetadataStandardClosed (S : MetadataStandard) : Prop :=
  S.validationRules

theorem metadata_standard_closed_from_evidence (S : MetadataStandard) (E : MetadataEvidence S) : MetadataStandardClosed S :=
  E.validationRulesClosed

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse