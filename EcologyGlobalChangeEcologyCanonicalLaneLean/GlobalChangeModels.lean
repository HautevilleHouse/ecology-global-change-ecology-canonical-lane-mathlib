import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.GlobalChangeAdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure EarthSystemModelPackage where
  climateDynamics : Prop
  biogeochemicalCycles : Prop
  landUseCover : Prop
  socioeconomicScenarios : Prop

structure EarthSystemModelEvidence (M : EarthSystemModelPackage) where
  climateDynamicsClosed : M.climateDynamics
  biogeochemicalCyclesClosed : M.biogeochemicalCycles
  landUseCoverClosed : M.landUseCover
  socioeconomicScenariosClosed : M.socioeconomicScenarios

def EarthSystemModelClosed (M : EarthSystemModelPackage) : Prop :=
  M.climateDynamics ∧ M.biogeochemicalCycles ∧ M.landUseCover ∧ M.socioeconomicScenarios

theorem earth_system_model_closed_from_evidence (M : EarthSystemModelPackage) (E : EarthSystemModelEvidence M) : EarthSystemModelClosed M := by
  exact And.intro E.climateDynamicsClosed (And.intro E.biogeochemicalCyclesClosed (And.intro E.landUseCoverClosed E.socioeconomicScenariosClosed))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse