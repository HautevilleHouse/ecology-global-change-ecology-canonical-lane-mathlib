import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.GatewayLemmas

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

def ConstrainedGlobalChangeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_global_change_endgame (A : AdmissibleClass) :
    ConstrainedGlobalChangeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse