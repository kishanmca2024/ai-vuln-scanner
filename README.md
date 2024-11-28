---

# **AI Vulnerability Scanner**

A powerful, AI-enhanced vulnerability scanner built with [Project Discovery](https://projectdiscovery.io/) tools, packaged in Docker for portability and ease of use. This tool integrates advanced AI analysis for smarter vulnerability prioritization, enabling you to efficiently secure your applications and infrastructure.

---

## **Features**
- **Automated Scanning**: Scans for vulnerabilities using **Nuclei** templates.
- **Reconnaissance Tools**: Includes Subfinder, Httpx, Naabu, and DNSx for comprehensive asset discovery.
- **AI-Driven Analysis**: Uses machine learning to prioritize vulnerabilities and reduce false positives.
- **Comprehensive Reporting**: Generates detailed scan reports with actionable insights.
- **Ease of Deployment**: Fully containerized with Docker for portability.
- **API Integration**: Optional Flask-based API for remote operation.

---

## **Included Tools**
- **Nuclei**: Template-based vulnerability scanning.
- **Subfinder**: Subdomain enumeration.
- **Httpx**: HTTP probing for live hosts.
- **Naabu**: Fast port scanning.
- **DNSx**: DNS enumeration.

---

## **Requirements**
- Docker installed on your machine.
- Python 3.8+ (if running scripts outside Docker).

---

## **Getting Started**

### **1. Build the Docker Image**
Clone the repository and build the Docker image:
```bash
git clone https://github.com/your-username/ai-vuln-scanner.git
cd ai-vuln-scanner
docker build -t ai-vuln-scanner .
```

### **2. Run the Docker Container**
Start the container interactively:
```bash
docker run -it ai-vuln-scanner
```

### **3. Using the Tool**
Inside the container, use the CLI to perform various operations:

#### **Scan for Vulnerabilities**
```bash
bash /opt/scripts/cli.sh scan https://example.com
```

#### **Enumerate Subdomains**
```bash
bash /opt/scripts/cli.sh enumerate example.com
```

#### **Analyze Results**
```bash
bash /opt/scripts/cli.sh analyze /path/to/results.json
```

#### **Expose the API (Optional)**
```bash
python3 /opt/scripts/api.py
```
Access the API at `http://localhost:5000`.

---

## **Scripts**
- **`cli.sh`**: Main command-line interface for managing scans.
- **`analyze.py`**: AI-powered analysis of scan results.
- **`update_templates.sh`**: Automatically updates Nuclei templates.
- **`api.py`**: Flask-based API for remote operations.

---

## **Configuration**
### **Nuclei Configuration**
Modify the `nuclei-config/config.yaml` file to customize Nuclei settings. Templates are stored in `/opt/nuclei-config/templates`.

---

## **Results**
Scan results are saved to the `results` directory (mapped to `/opt/results` inside the container). These results can be analyzed using the built-in AI tools.

---

## **Future Enhancements**
- Add support for advanced AI models to improve risk scoring.
- Integrate with CI/CD pipelines.
- Extend API functionality for enterprise use cases.

---

## **Contributing**
Contributions are welcome! Please fork the repository and submit a pull request with your changes.

---

## **License**
This project is licensed under the MIT License. See the `LICENSE` file for details.

---
