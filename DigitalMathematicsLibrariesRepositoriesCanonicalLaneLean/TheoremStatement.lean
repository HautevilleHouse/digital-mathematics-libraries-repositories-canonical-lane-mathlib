import DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure DMLSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DMLAdmittedObject where
  space : DMLSpace
  digitalRepository : Prop
  metadataComplete : Prop
  interoperabilityLayer : Type
  canonicalLaneIntegrated : Prop
  conclusion : canonicalLaneIntegrated

structure DMLEndgameState where
  object : DMLAdmittedObject

def DMLWitnessClosed (O : DMLAdmittedObject) : Prop :=
  O.canonicalLaneIntegrated

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
