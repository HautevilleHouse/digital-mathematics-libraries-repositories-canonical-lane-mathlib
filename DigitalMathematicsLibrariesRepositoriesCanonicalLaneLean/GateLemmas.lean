import canonicalLaneMathlib.AdmissibleClass
import DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean.CrosswalkBridge

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse