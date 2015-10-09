package ca.rfonseca85.springlab.data;

import java.util.List;

import ca.rfonseca85.springlab.model.Member;

public interface MemberDao {
    public Member findById(Long id);

    public Member findByEmail(String email);

    public List<Member> findAllOrderedByName();

    public void register(Member member);
}
