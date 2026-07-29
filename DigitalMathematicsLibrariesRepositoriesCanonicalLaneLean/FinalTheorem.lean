import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

def ConstrainedDigitalRepositoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem digital_repository_constrained_endgame (A : AdmissibleClass) :
    ConstrainedDigitalRepositoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse