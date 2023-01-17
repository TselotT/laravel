import { Link, Head } from "@inertiajs/inertia-react";
import Table from "react-bootstrap/Table";
export default function Heroes(props) {
    console.log(props);
    const { heroes } = props;
    return (
        <>
            <h1 className="text-center my-6">List of Heros</h1>
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
                            <td>{hero.id}</td>
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
