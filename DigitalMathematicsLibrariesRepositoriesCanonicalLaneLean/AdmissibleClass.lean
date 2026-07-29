import DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure AdmissibleClass where
  object : DMLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DMLWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
