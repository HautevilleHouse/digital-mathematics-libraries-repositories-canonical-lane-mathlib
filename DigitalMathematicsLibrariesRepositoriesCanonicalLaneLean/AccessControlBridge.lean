import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure AccessControlPolicy where
  authenticationMethod : String
  authorizationModel : String
  rightsStatements : List String
  embargoMechanism : Prop

structure AccessControlEvidence (A : AccessControlPolicy) where
  authenticationClosed : Prop
  authorizationClosed : Prop
  embargoMechanismClosed : A.embargoMechanism

def AccessControlClosed (A : AccessControlPolicy) : Prop :=
  A.embargoMechanism

theorem access_control_closed_from_evidence (A : AccessControlPolicy) (E : AccessControlEvidence A) :
    AccessControlClosed A :=
  E.embargoMechanismClosed

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse