import { validateSession } from '@/config/api-validation';
import { joinWorkspace } from '@/prisma/services/workspace';

const handler = async (req, res) => {
  const { method } = req;

  if (method === 'POST') {
    const session = await validateSession(req, res);
    const { workspaceCode, raderCode } = req.body;
    joinWorkspace(workspaceCode, raderCode)
      .then((joinedAt) => res.status(200).json({ data: { joinedAt } }))
      .catch((error) =>
        res.status(404).json({ errors: { error: { msg: error.message } } })
      );
  } else {
    res
      .status(405)
      .json({ errors: { error: { msg: `${method} method unsupported` } } });
  }
};

export default handler;
