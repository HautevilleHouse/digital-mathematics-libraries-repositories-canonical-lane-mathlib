import DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DMLWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
