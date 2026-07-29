import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure BiosphereModel where
  primaryProductivity : Float
  biomassPool : Float
  atmosphericCO2 : Float
  terrestrialCarbonSink : Float
  oceanicUptake : Float
  climateSensitivity : Float

structure BiosphereModelEvidence (B : BiosphereModel) where
  primaryProductivityClosed : B.primaryProductivity > 60.0
  biomassPoolClosed : B.biomassPool > 500.0
  atmosphericCO2Closed : B.atmosphericCO2 < 400.0
  terrestrialCarbonSinkClosed : B.terrestrialCarbonSink > 2.0
  oceanicUptakeClosed : B.oceanicUptake > 2.0
  climateSensitivityClosed : B.climateSensitivity < 4.5

def BiosphereModelClosed (B : BiosphereModel) : Prop :=
  B.primaryProductivity > 60.0 ∧ B.biomassPool > 500.0 ∧
  B.atmosphericCO2 < 400.0 ∧ B.terrestrialCarbonSink > 2.0 ∧
  B.oceanicUptake > 2.0 ∧ B.climateSensitivity < 4.5

theorem biosphere_model_closed_from_evidence (B : BiosphereModel) (E : BiosphereModelEvidence B) :
    BiosphereModelClosed B := by
  exact And.intro E.primaryProductivityClosed
    (And.intro E.biomassPoolClosed
      (And.intro E.atmosphericCO2Closed
        (And.intro E.terrestrialCarbonSinkClosed
          (And.intro E.oceanicUptakeClosed E.climateSensitivityClosed))))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse