package spin.dao;

import org.springframework.stereotype.Repository;

import spin.model.Invitation;

@Repository("invitationDao")
public class InvitationDaoImpl extends AbstractDao<Integer, Invitation> implements InvitationDao {

    @Override
    public void saveInvitation(Invitation invitation) {
        persist(invitation);
    }
}
