describe("Report", function() {
  let report;

  beforeEach(function() {
    report = new report();
  });

  it("should return ['Green']", function() {
    expect(report.returnArray).toEqual(['Green']);
  });
});