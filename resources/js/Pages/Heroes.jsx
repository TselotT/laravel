import { Link, Head } from "@inertiajs/inertia-react";
import Table from "react-bootstrap/Table";
export default function Heroes(props) {
    const { heroes } = props;
    let no = 0
    return (
        <>
            <h1 className="text-center my-6">List of Heros</h1>
            <h4 className="text-center"><Link className="btn btn-primary" href="/weapons">Go to weapons page</Link></h4>
            <Table className="mx-3" striped bordered hover>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Health</th>
                        <th>Damage</th>
                    </tr>
                </thead>
                <tbody>
                    {heroes && heroes.map((hero,i) => (
                        <tr key={hero.id}>
                            <td>{++no}</td>
                            <td>{hero.name}</td>
                            <td>{hero.health}</td>
                            <td>{hero.total_damage}</td>
                        </tr>
                    ))}
                    
                </tbody>
            </Table>
        </>
    );
}
