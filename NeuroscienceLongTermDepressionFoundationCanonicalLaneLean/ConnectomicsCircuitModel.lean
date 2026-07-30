import canonicalLaneMathlib.AdmissibleClass

/-!
# Connectomics Circuit Model Package
-/

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure ConnectomicsCircuitModelPackage where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkDynamics : Prop
  synapticWeights : Prop
  plasticityRules : Prop
  circuitReorganization : Prop

structure ConnectomicsCircuitModelEvidence (P : ConnectomicsCircuitModelPackage) where
  structuralConnectivityClosed : P.structuralConnectivity
  functionalConnectivityClosed : P.functionalConnectivity
  networkDynamicsClosed : P.networkDynamics
  synapticWeightsClosed : P.synapticWeights
  plasticityRulesClosed : P.plasticityRules
  circuitReorganizationClosed : P.circuitReorganization

def ConnectomicsCircuitModelClosed (P : ConnectomicsCircuitModelPackage) : Prop :=
  P.structuralConnectivity ∧ P.functionalConnectivity ∧ P.networkDynamics ∧
  P.synapticWeights ∧ P.plasticityRules ∧ P.circuitReorganization

theorem connectomics_circuit_model_closed_from_evidence
    (P : ConnectomicsCircuitModelPackage)
    (E : ConnectomicsCircuitModelEvidence P) :
    ConnectomicsCircuitModelClosed P := by
  exact And.intro E.structuralConnectivityClosed
    (And.intro E.functionalConnectivityClosed
      (And.intro E.networkDynamicsClosed
        (And.intro E.synapticWeightsClosed
          (And.intro E.plasticityRulesClosed E.circuitReorganizationClosed))))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse