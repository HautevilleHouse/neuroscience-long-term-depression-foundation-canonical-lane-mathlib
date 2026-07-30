import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure NeuralAdmissibleClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def neuralAdmittedClosure (A : NeuralAdmissibleClass) : Prop :=
  NeuralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse