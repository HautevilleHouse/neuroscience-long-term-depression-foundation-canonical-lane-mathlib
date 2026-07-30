import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

def gateClosed (A : NeuralAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NeuralAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse