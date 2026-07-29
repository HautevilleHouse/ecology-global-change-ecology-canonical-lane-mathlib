import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.biophysicalProcesses ∧ A.object.humanForcing ∧ A.object.feedbackStructure

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse